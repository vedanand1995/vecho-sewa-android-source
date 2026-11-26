.class public final synthetic Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;ILcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    iput p2, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-component-HomeMenuAdapter(ILcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;Landroid/view/View;)V

    return-void
.end method
