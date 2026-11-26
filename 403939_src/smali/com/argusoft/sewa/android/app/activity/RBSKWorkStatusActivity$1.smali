.class Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity$1;
.super Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;
.source "RBSKWorkStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;->retrieveWorkLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RBSKWorkStatusActivity;

    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public retryUploading(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V
    .locals 0

    return-void
.end method
