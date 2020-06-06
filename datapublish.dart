import '../model/publish.dart';

List<Publish> listpublish = [
  Publish(
    profil:"images/1.jpg",
    nom:"laris",
    date:"il ya 10:12",
    photo:"images/2.jpg",
    commentaires: [
      Comment(
        nom_comment:"jessica",
        msg_comment:"je vais bien , 2 jours hein",
        profil_comment: "images/3.jpg",
      ),
      Comment(
        nom_comment:"eric225",
        msg_comment:"bien et chez toi ?",
        profil_comment: "images/4.jpg",
      ),
      
    ],
    reponse:[
      Reply(
        msg_reply:"merci de penser a nous",
        profil_reply:"images/1.jpg",
      ),
    ]),
    Publish(
    profil:"images/2.jpg",
    nom:"ines",
    date:"il ya 12:17",
    photo:"images/6.jpg",
    commentaires: [
      Comment(
        nom_comment:"davy",
        msg_comment:"Merci pour ton message",
        profil_comment: "images/3.jpg",
      ),
      Comment(
        nom_comment:"Prunelle",
        msg_comment:"Viens chez moi, jai un plan pour toi",
        profil_comment: "images/2.jpg",
      ),
      
    ],
    reponse:[
      Reply(
        msg_reply:"ah voila",
        profil_reply:"images/1.jpg",
      ),
      Reply(
        msg_reply:"Attend moi je suis en route",
        profil_reply:"images/1.jpg",
      ),
    ]),
    Publish(
    profil:"images/3.jpg",
    nom:"Domi",
    date:"il ya 11:08",
    photo:"images/7.jpg",
    commentaires: [
      Comment(
        nom_comment:"sydney",
        msg_comment:"Merci pour tout",
        profil_comment: "images/4.jpg",
      ),
      
    ],
    reponse:[
      Reply(
        msg_reply:"Merci cest gentil",
        profil_reply:"images/1.jpg",
      ),
      
    ]),
    Publish(
    profil:"images/4.jpg",
    nom:"davy",
    date:"il ya 17:42",
    photo:"images/8.jpg",
    commentaires: [
      Comment(
        nom_comment:"laris",
        msg_comment:"Merci a vous ",
        profil_comment: "images/4.jpg",
      ),
      Comment(
        nom_comment:"Parrain",
        msg_comment:"merci a vous",
        profil_comment: "images/3.jpg",
      ),
      Comment(
        nom_comment:"ghost",
        msg_comment:"merci a vous",
        profil_comment: "images/2.jpg",
      ),
      
    ],
    reponse:[
      Reply(
        msg_reply:"Merci de penser a nous",
        profil_reply:"images/1.jpg",
      ),
      
    ]),
  
];