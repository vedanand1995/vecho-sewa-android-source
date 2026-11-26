.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityMPHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;I)V
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

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->val$position:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;I)V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHS;->setRequestedOrientation(I)V

    return-void
.end method
