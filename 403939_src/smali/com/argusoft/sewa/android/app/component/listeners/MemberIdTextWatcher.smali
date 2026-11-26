.class public Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;
.super Ljava/lang/Object;
.source "MemberIdTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private before:Ljava/lang/String;

.field private memberEditText:Landroid/widget/EditText;

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    .line 18
    const-string p1, "^((A\\d?)|(A\\d{1,10}N?))$"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->pattern:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "A"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->before:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 55
    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 60
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->memberEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->pattern:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;->before:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
