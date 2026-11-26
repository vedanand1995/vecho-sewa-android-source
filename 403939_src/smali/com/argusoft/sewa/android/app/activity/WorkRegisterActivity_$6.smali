.class Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;
.super Ljava/lang/Object;
.source "WorkRegisterActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

.field final synthetic val$resultList:Ljava/util/List;

.field final synthetic val$tableLayout:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->val$tableLayout:Landroid/widget/TableLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->val$resultList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->val$tableLayout:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_$6;->val$resultList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;Landroid/widget/TableLayout;Ljava/util/List;)V

    return-void
.end method
