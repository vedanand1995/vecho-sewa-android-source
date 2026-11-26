.class public final synthetic Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

.field public final synthetic f$1:Landroid/widget/RadioGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RadioGroup;

    invoke-static {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->lambda$getSchoolComponent$0(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Landroid/widget/RadioGroup;Landroid/view/View;)V

    return-void
.end method
