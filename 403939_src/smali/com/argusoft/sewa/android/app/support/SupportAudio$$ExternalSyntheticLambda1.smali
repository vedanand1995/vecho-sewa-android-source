.class public final synthetic Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/support/SupportAudio;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/support/SupportAudio;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportAudio$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/support/SupportAudio;

    invoke-virtual {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/support/SupportAudio;->lambda$toggle$1$com-argusoft-sewa-android-app-support-SupportAudio(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
