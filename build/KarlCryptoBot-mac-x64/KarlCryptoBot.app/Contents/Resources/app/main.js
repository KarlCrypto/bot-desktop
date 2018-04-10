const electron = require('electron'),
	app = electron.app,
	BrowserWindow = electron.BrowserWindow
const Menu = electron.Menu

let mainWindow

function createWindow () {
	mainWindow = new BrowserWindow({
		autoHideMenuBar: true,
	})


	// Create the Application's main menu
	let template = [{
		label: "Application",
		submenu: [
			{ label: "Quit", accelerator: "Command+Q", click: function() { app.quit(); }}
		]}, {
		label: "Edit",
		submenu: [
			{ label: "Undo", accelerator: "CmdOrCtrl+Z", selector: "undo:" },
			{ label: "Redo", accelerator: "Shift+CmdOrCtrl+Z", selector: "redo:" },
			{ type: "separator" },
			{ label: "Cut", accelerator: "CmdOrCtrl+X", selector: "cut:" },
			{ label: "Copy", accelerator: "CmdOrCtrl+C", selector: "copy:" },
			{ label: "Paste", accelerator: "CmdOrCtrl+V", selector: "paste:" },
			{ label: "Select All", accelerator: "CmdOrCtrl+A", selector: "selectAll:" }
		]}
	];

	Menu.setApplicationMenu(Menu.buildFromTemplate(template));

	mainWindow.loadURL(`file://${__dirname}/index.html`)
//	mainWindow.webContents.openDevTools();
	mainWindow.on('close', () => {
		mainWindow.webContents.send('stop-server')
	})
	mainWindow.on('closed', () => {
		mainWindow = null
	})
	mainWindow.maximize()
}

app.on('ready', createWindow)
app.on('browser-window-created', function (e, window) {
	window.setMenu(null)
})

app.on('window-all-closed', function () {
	if (process.platform !== 'darwin') {
		app.quit()
	}
})

app.on('activate', function () {
	if (mainWindow === null) {
		createWindow()
	}
})
