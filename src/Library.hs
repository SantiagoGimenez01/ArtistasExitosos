module Library where
import PdePreludat
import Data.List (intersect)

type Cancion = String
data Artista = UnArtista {
    nombre :: String,
    canciones :: [Cancion]
} deriving Show

fitito :: Artista
fitito = UnArtista "Fitito Paez" ["11 y 6", "El amor despues del amor", "Mariposa Tecknicolor"]

calamardo :: Artista
calamardo = UnArtista "Andres Calamardo" ["Flaca", "Sin Documentos", "Tuyo siempre"]

paty :: Artista
paty = UnArtista "Taylor Paty" ["Shake It Off", "Lover"]

--Punto 1
letrasMinusculas :: Cancion -> Number
letrasMinusculas cancion = length (intersect cancion ['a'..'z'])

saberCalificacion :: Cancion -> Number
saberCalificacion = (10+).letrasMinusculas

--Punto 2
esBuenaCalificacion :: Cancion -> Bool
esBuenaCalificacion = (>20).saberCalificacion

sumaDeCalificaciones :: [Cancion] -> Number
sumaDeCalificaciones canciones = sum ( map saberCalificacion canciones)

esExitoso :: Artista -> Bool
esExitoso artista = ((>50).sumaDeCalificaciones)(filter esBuenaCalificacion (canciones artista))

artistasExitosos :: [Artista] -> [Artista]
artistasExitosos = filter esExitoso 