package generateur

import model.item.Arme
import model.item.Armure
import qualites
import qualitesFromCSV
import typeArmes
import typeArmures
import java.nio.file.Files
import java.nio.file.Paths

class GenerateurArmures(val cheminFichier: String) {
    fun generer(): MutableMap<String, Armure> {
        val mapObjets = mutableMapOf<String, Armure>()

        // Lecture du fichier CSV, le contenu du fichier est stocké dans une liste mutable :
        val cheminCSV = Paths.get(this.cheminFichier)
        val listeObjCSV = Files.readAllLines(cheminCSV)

        // Instance des objets :
        for (i in 1..listeObjCSV.lastIndex) {
            val ligneObjet = listeObjCSV[i].split(";")
            val cle = ligneObjet[0].lowercase()
            val objet = Armure( nom = ligneObjet[0],
                                description = ligneObjet[1],
                                typeArmure = typeArmures[ligneObjet[2].lowercase()]!!,
                                qualite = qualitesFromCSV[ligneObjet[3].lowercase()]!!)
            mapObjets[cle] = objet
        }
        return mapObjets
    }
}