.class Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$6;
.super Ljava/lang/Object;
.source "HighRiskAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setMemberSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 387
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSelectionType()V

    return-void
.end method
