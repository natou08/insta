class Publish{
  final String profil, nom, date, photo;
  final List<Comment> commentaires;
  final List<Reply> reponse;
  Publish(
    { this.profil,
    this.nom,
    this.date,
    this.photo,
    this.commentaires,
    this.reponse

    });
  
  }
class Comment {
  final String nom_comment, profil_comment, msg_comment;
  Comment({this.nom_comment, this.profil_comment, this.msg_comment});

}
class Reply{
  final String profil_reply, msg_reply;
  Reply({this.profil_reply, this.msg_reply});
}