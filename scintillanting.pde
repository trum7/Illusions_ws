void scintillating( ) {
    background( 0 );          

    //style
    strokeWeight( 4 );      
    smooth( );               // antialias lines
    stroke(255);  
    int step = 50;         

    // Draw grid 
    for ( int x = step; x < width; x = x + step ) {
        line( x, 0, x, height );
    }

    for ( int y = step; y < height; y = y + step ) {
        line( 0, y, width, y );
    }

    stroke( 255, 255, 255 );  // white circles
    for ( int i = step; i < width -5; i = i + step ) {    
       for ( int j = step; j < height -15; j = j + step ) {
              drawDiamonds(i,j);
         }
     }    
}

void drawDiamonds( float x, float y ) {
    float offset = sqrt( 225 ) / 2;
    quad( x - offset, y, x, y - offset, x + offset, y, x, y + offset );   
}