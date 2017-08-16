/**
 * 
 */

function openCity(evt, genre) {
    evt.currentTarget.className += " active";
    window.location='popNewest.do?m_genre='+genre;
}

window.onload=openCity('${m_genre}');

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
