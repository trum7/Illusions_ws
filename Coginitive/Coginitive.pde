int illusions = 7;
int current = 1;
//toggle illusion activation
boolean active = true;

void setup( ) {
    size( 800, 800 );
    background( 255 );
}

void draw( ) {
    //background( 255 );
    pushStyle( );
    switch( current ) {
    case 7:
        scintillating( );
        break;
        // implement from here. Don't forget to add break for each case
    case 1:
        background(255);
        shiftedGrid( );
        break;
    case 2:
        psycho();
        break;
    case 3:
        biggerSquare( );
        break;
    case 4:
        movingSquares( );
        break;
    case 5:
        tunnel( );
        break;
    case 6:
        movingCircle( );
        break;
    }
    popStyle( );
}

// switch illusion using the spacebar
void keyReleased( ) {
    if ( key == ' ' )
    {
        current = current < illusions ? current+1 : 1;
        active = true;
    }
    if ( key == 'a' )
        active = !active;
}