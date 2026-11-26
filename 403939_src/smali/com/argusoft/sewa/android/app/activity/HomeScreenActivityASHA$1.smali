.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityASHA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;I)V
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

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)Ljava/util/LinkedList;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
