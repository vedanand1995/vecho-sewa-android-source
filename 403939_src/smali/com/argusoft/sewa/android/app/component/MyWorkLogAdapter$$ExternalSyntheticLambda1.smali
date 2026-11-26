.class public final synthetic Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

.field public final synthetic f$2:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->lambda$getView$1$com-argusoft-sewa-android-app-component-MyWorkLogAdapter(Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
