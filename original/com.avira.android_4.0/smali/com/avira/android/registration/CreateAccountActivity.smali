.class public Lcom/avira/android/registration/CreateAccountActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/avira/android/registration/e;


# instance fields
.field private a:Lcom/avira/android/registration/d;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/AutoCompleteTextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/registration/CreateAccountActivity;)Lcom/avira/android/registration/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->d:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/avira/android/registration/CreateAccountActivity;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/widget/ArrayAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 151
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->b:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/avira/android/registration/CreateAccountActivity;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/avira/android/registration/CreateAccountActivity;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/avira/android/registration/CreateAccountActivity;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 109
    return-object p0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->h()V

    .line 96
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->n()V

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->p()V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->o()V

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x7f0e004f -> :sswitch_0
        0x7f0e00b6 -> :sswitch_2
        0x7f0e00bd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/avira/android/registration/d;

    invoke-direct {v0, p0}, Lcom/avira/android/registration/d;-><init>(Lcom/avira/android/registration/e;)V

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    .line 40
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->setContentView(I)V

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->d:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/avira/android/registration/c;

    invoke-direct {v1, p0}, Lcom/avira/android/registration/c;-><init>(Lcom/avira/android/registration/CreateAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->e:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->m()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->i()V

    .line 103
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 194
    if-eqz p2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->q()V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->r()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0, p1}, Lcom/avira/android/registration/d;->a(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->f()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/avira/android/registration/CreateAccountActivity;->a:Lcom/avira/android/registration/d;

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->g()V

    .line 90
    return-void
.end method
