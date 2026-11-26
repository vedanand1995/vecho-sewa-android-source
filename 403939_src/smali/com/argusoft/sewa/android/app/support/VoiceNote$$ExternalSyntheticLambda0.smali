.class public final synthetic Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/support/VoiceNote;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/VoiceNote$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/support/VoiceNote;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/support/VoiceNote;->lambda$play$0$com-argusoft-sewa-android-app-support-VoiceNote(Landroid/media/MediaPlayer;)V

    return-void
.end method
