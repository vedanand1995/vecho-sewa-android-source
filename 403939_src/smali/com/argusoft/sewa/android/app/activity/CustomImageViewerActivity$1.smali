.class Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity$1;
.super Ljava/lang/Object;
.source "CustomImageViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/CustomImageViewerActivity;->onBackPressed()V

    return-void
.end method
