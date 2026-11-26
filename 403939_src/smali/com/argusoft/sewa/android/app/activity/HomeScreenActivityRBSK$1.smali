.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityRBSK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->val$position:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;I)V

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->setRequestedOrientation(I)V

    return-void
.end method
