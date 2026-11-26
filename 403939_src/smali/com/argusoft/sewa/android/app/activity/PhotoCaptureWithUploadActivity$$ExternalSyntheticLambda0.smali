.class public final synthetic Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PhotoCaptureWithUploadActivity$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
