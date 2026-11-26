.class public Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;
.super Ljava/lang/Object;
.source "FamilyIdTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private before:Ljava/lang/String;

.field private familyEditText:Landroid/widget/EditText;

.field private flag:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->flag:Z

    .line 18
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    .line 19
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    const-string v1, "FM/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->flag:Z

    const-string v1, "^(FM/)\\d{0,4}$"

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "FM/"

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ge v0, v5, :cond_3

    .line 52
    const-string v0, "^(FM/)\\d{4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const-string v4, "%s/"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 57
    :cond_2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 63
    :cond_3
    const-string v0, "^((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_5

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_4

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v5, v3, :cond_4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    :cond_5
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_6

    .line 76
    const-string v0, ""

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v0, "^((FM/\\d{0,4})|((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 81
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->familyEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 29
    const-string p3, "^((FM/\\d{0,4})|((FM/\\d{4}/\\d?)|(FM/\\d{4}/\\d{1,10}N?)))$"

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 30
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->before:Ljava/lang/String;

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->flag:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 37
    iget-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->flag:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;->flag:Z

    return-void
.end method
