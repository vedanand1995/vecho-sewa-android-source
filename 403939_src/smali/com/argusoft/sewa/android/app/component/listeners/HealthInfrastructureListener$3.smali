.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;
.super Landroid/text/style/ClickableSpan;
.source "HealthInfrastructureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/String;Landroid/content/Context;)V
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

    .line 634
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 637
    new-instance p1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;)V

    .line 645
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3$1;->start()V

    return-void
.end method
