.class Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const-string p2, "T/T"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const-string p2, "T/F"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
