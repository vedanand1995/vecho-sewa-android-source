.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 400
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 404
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 405
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Select School : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getActualId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 408
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHasUnselectedText(Z)V

    .line 409
    sput-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 410
    sput-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 411
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-static {p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->access$1102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/argusoft/sewa/android/app/model/SchoolBean;)Lcom/argusoft/sewa/android/app/model/SchoolBean;

    :cond_1
    return-void
.end method
