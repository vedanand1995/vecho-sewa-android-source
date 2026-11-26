.class public final synthetic Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    invoke-static {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->lambda$onClick$1(Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/content/DialogInterface;)V

    return-void
.end method
