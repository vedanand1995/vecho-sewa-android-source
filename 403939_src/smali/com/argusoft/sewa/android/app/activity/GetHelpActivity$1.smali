.class synthetic Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$1;
.super Ljava/lang/Object;
.source "GetHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 292
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->values()[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$1;->$SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group:[I

    :try_start_0
    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->NEEDS_ANSWER:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$1;->$SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group:[I

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->TO_CHECK:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$1;->$SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group:[I

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
