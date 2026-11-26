.class Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener$MemberAnswer;
.super Ljava/lang/Object;
.source "LCDCMemberListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemberAnswer"
.end annotation


# instance fields
.field answer:I

.field memberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener$MemberAnswer;->memberId:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener$MemberAnswer;->answer:I

    return-void
.end method
