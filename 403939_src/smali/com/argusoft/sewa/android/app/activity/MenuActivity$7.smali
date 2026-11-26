.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->doUpdate(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    .line 425
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
