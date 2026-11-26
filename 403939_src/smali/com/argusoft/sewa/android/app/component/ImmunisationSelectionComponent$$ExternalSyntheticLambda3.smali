.class public final synthetic Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->lambda$getVaccineCheckBox$0$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
