.class Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCallView(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private phoneNo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "tel:"

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->phoneNo:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1128
    const-string v0, "MyStaticComponents"

    const-string v1, "Call not done number is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 1131
    const-string v0, "Call not done phone number is not valid"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->context:Landroid/content/Context;

    .line 1119
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->phoneNo:Ljava/lang/String;

    return-object p0
.end method
