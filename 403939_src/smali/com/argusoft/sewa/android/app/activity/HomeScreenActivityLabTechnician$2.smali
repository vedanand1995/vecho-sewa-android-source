.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;
.super Ljava/lang/Thread;
.source "HomeScreenActivityLabTechnician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;I)V
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

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->val$position:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;I)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityLabTechnician;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
