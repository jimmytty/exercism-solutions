// @ts-check

export function Size(width = 80, height = 60) {
    this.width  = width
    this.height = height
}

Size.prototype.resize = function (width, height) {
    this.width  = width
    this.height = height
}

export function Position(x = 0, y = 0) {
    this.x = x
    this.y = y
}

Position.prototype.move = function (x, y) {
    this.x = x
    this.y = y
}

export class ProgramWindow {
    constructor() {
        this.size     = new Size
        this.position = new Position
        this.screenSize = {
            width: 800,
            height: 600,
        }
    }

    resize(SizeObj) {
        this.size.width  = SizeObj.width
        this.size.height = SizeObj.height
        if ( this.size.width  < 1 ) { this.size.width  = 1 }
        if ( this.size.height < 1 ) { this.size.height = 1 }
        if ( this.size.width > this.screenSize.width ) {
            this.size.width = this.screenSize.width - this.position.x
        }
        if ( this.size.height > this.screenSize.height ) {
            this.size.height = this.screenSize.height - this.position.y
        }
    }

    move(PositionObj) {
        this.position.x = PositionObj.x
        this.position.y = PositionObj.y
        if ( this.position.x < 0 ) { this.position.x = 0 }
        if ( this.position.y < 0 ) { this.position.y = 0 }
        if ( this.position.x + this.size.width > this.screenSize.width ) {
            this.position.x = this.position.x - ( this.position.x + this.size.width - this.screenSize.width )
        }
        if ( this.position.y + this.size.height > this.screenSize.height ) {
            this.position.y = this.position.y - ( this.position.y + this.size.height - this.screenSize.height )
        }
    }
}

export function changeWindow(programWindow) {
    programWindow.size.width  = 400
    programWindow.size.height = 300
    programWindow.position.x  = 100
    programWindow.position.y  = 150
    return programWindow
}
