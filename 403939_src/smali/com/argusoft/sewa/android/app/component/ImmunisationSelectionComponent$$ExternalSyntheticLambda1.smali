.class public final synthetic Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

.field public final synthetic f$1:Lcom/google/android/material/textview/MaterialTextView;

.field public final synthetic f$2:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Lcom/google/android/material/textview/MaterialTextView;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$2:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda1;->f$2:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->lambda$getDateSelectorClickListener$1$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Lcom/google/android/material/textview/MaterialTextView;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/view/View;)V

    return-void
.end method
