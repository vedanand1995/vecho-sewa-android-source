.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityOA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;I)V
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

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->val$position:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;I)V

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityOA;->setRequestedOrientation(I)V

    return-void
.end method
