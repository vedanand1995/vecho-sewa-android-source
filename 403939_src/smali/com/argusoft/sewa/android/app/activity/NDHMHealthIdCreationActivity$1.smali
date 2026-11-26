.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;
.super Ljava/lang/Object;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

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

    .line 318
    const-string p1, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    if-nez p3, :cond_1

    .line 319
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p2}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 320
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    .line 326
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p2}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-ne p3, p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
