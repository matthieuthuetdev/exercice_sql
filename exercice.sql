v
/* 1. Sélectionner l'identifiant, le nom de tous les clients dont le numéro de téléphone commence par '04' */
SELECT
    client_nom client_ref
FROM
    clients
WHERE
    client_telephone LIKE "04%";

/* 2. Sélectionner l'identifiant, le nom et le type de tous les clients qui sont des particuliers */
SELECT
    clients.client_ref,
    clients.client_nom,
    clients.type_client_id,
    type_clients.type_client_libelle
FROM
    clients
    INNER JOIN type_clients ON clients.type_client_id = type_clients.type_client_id
WHERE
    type_clients.type_client_libelle = 'particulier';

/* 3. Sélectionner l'identifiant, le nom et le type de tous les clients qui ne sont pas des particuliers */
SELECT
    clients.client_ref,
    clients.client_nom,
    clients.type_client_id,
    type_clients.type_client_libelle
FROM
    clients
    INNER JOIN type_clients ON clients.type_client_id = type_clients.type_client_id
WHERE
    type_clients.type_client_libelle not in ('particulier');

/* 4. Sélectionner les projets qui ont été livrés en retard */
SELECT
    *
from
    projets
WHERE
    projet_date_fin_prevue < projet_date_fin_effective;

/* 5. Sélectionner la date de dépôt, la date de fin prévue, les superficies, le prix de tous les projets 
 avec le nom du client et le nom de l'architecte associés au projet */
/* 6. Sélectionner tous les projets (dates, superficies, prix) avec le nombre d'intervenants autres que le client et l'architecte */
/* 7. Sélectionner les types de projets avec, pour chacun d'entre eux, le nombre de projets associés et le prix moyen pratiqué */
/* 8. Sélectionner les types de travaux avec, pour chacun d'entre eux, la superficie du projet la pls grande */
/* 9. Sélectionner l'ensembles des projets (dates, prix) avec les informations du client (nom, telephone, adresse), le type de travaux et le type de projet. */
/* 10. Sélectionner les projets dont l'adresse est identique au client associé */