.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 431
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 432
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHasUnselectedText(Z)V

    .line 433
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$2;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/argusoft/sewa/android/app/model/SchoolBean;)Lcom/argusoft/sewa/android/app/model/SchoolBean;

    return-void
.end method
