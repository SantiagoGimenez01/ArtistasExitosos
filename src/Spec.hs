module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Punto 1: Saber la calificacion de una cancion" $ do
    it "11 y 6:" $ do
     saberCalificacion "11 y 6" `shouldBe` 11
    it "Mariposa Tecknicolor" $ do
      saberCalificacion "Mariposa Tecknicolor" `shouldBe` 27 
    it "Flaca" $ do
      saberCalificacion "Flaca" `shouldBe` 14
    it "Tuyo siempre" $ do
      saberCalificacion "Tuyo siempre" `shouldBe` 20
    it "Shake It Off" $ do
      saberCalificacion "Shake It Off" `shouldBe` 17
  describe "Punto 2:Averiguar si es exitoso un artista" $ do
    it "Fitito" $ do
      esExitoso fitito `shouldBe` True
    it "Calamardo" $ do
      esExitoso calamardo `shouldBe` False
    it "Paty" $ do
      esExitoso paty `shouldBe` False
    describe "Punto 3: Obtener artistas exitoso de un conjunto de artistas" $ do
      it "[fitito, calamardo, paty]" $ do
        artistasExitosos [fitito, calamardo, paty] `shouldBe` [fitito] 
      it "[calamardo, paty]" $ do
        artistasExitosos [calamardo, paty] `shouldBe` [] 
      it "[fitito, calamardo]" $ do
        artistasExitosos [fitito, calamardo] `shouldBe` [fitito] 
      it "[fitito]" $ do
        artistasExitosos [fitito] `shouldBe` [fitito] 
      it "[fitito, paty]" $ do
        artistasExitosos [fitito, paty] `shouldBe` [fitito] 

