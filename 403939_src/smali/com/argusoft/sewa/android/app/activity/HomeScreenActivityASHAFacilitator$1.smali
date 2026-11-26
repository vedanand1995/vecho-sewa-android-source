.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;
.super Ljava/lang/Thread;
.source "HomeScreenActivityASHAFacilitator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;I)V
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

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;)Ljava/util/LinkedList;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHAFacilitator;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
