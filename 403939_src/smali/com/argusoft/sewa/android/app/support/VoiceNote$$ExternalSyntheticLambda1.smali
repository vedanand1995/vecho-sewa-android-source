.class public final synthetic Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/support/VoiceNote;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lambda$play$1$com-argusoft-sewa-android-app-support-VoiceNote(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
