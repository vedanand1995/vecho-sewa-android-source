.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityCHO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;I)V
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

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->val$position:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;I)V

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
