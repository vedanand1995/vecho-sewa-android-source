.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityMPHW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;I)V
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
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;)Ljava/util/LinkedList;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;->access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityMPHW;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
