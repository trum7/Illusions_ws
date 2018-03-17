int illusions = 7;
int current = 1;
//toggle illusion activation
boolean active = true;
int back = 1;
float radius = 650;

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
        if (current < illusions)
          current+=1;
        else{
          current = 1;
          back = 1;
          radius = 650;
        }  
        active = true;
    }
    if ( key == 'a' )
        active = !active;
}