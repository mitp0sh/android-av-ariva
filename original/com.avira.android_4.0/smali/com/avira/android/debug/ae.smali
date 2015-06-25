.class public final Lcom/avira/android/debug/ae;
.super Lcom/avira/android/debug/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/avira/android/debug/c;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/debug/ae;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/y;->a:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/avira/android/debug/ae;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/y;->b:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/avira/android/debug/ae;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/y;->c:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/avira/android/antivirus/UpdateServerConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/antivirus/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antivirus/y;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antivirus/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/antivirus/UpdateServerConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/avira/android/debug/ae;->dismiss()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->setContentView(I)V

    .line 31
    const-string v0, "Generate contact"

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f0e0107

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/ae;->a:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/ae;->b:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/debug/ae;->c:Landroid/widget/EditText;

    .line 37
    sget-object v0, Lcom/avira/android/antivirus/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avira/android/debug/ae;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/avira/android/antivirus/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/avira/android/debug/ae;->b:Landroid/widget/EditText;

    sget-object v1, Lcom/avira/android/antivirus/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1
    sget-object v0, Lcom/avira/android/antivirus/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/avira/android/debug/ae;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/avira/android/antivirus/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_2
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/ae;->d:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/avira/android/debug/ae;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/debug/ae;->e:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/avira/android/debug/ae;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-super {p0, p1}, Lcom/avira/android/debug/c;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
