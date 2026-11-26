.class Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity$1;
.super Ljava/lang/Object;
.source "CustomPDFViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity;->onBackPressed()V

    return-void
.end method
