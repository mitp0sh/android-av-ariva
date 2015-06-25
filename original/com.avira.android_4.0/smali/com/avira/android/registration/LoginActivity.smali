.class public Lcom/avira/android/registration/LoginActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/registration/f;


# instance fields
.field private a:Lcom/avira/android/registration/i;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/registration/LoginActivity;)Lcom/avira/android/registration/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->c:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/avira/android/registration/LoginActivity;->a(Landroid/widget/EditText;)Ljava/lang/String;

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
    .line 143
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->b:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/avira/android/registration/LoginActivity;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 113
    return-object p0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->h()V

    .line 100
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 101
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 152
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->n()V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->p()V

    goto :goto_0

    .line 158
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->o()V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x7f0e004f -> :sswitch_0
        0x7f0e0180 -> :sswitch_2
        0x7f0e0181 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lcom/avira/android/registration/i;

    invoke-direct {v0, p0}, Lcom/avira/android/registration/i;-><init>(Lcom/avira/android/registration/f;)V

    iput-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    .line 38
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->setContentView(I)V

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0180

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/registration/LoginActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/avira/android/registration/g;

    invoke-direct {v1, p0}, Lcom/avira/android/registration/g;-><init>(Lcom/avira/android/registration/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/avira/android/registration/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/avira/android/registration/LoginActivity;->c:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->c:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/avira/android/registration/h;

    invoke-direct {v1, p0}, Lcom/avira/android/registration/h;-><init>(Lcom/avira/android/registration/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->m()V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->i()V

    .line 107
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0, p1}, Lcom/avira/android/registration/i;->a(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->f()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/avira/android/registration/LoginActivity;->a:Lcom/avira/android/registration/i;

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->g()V

    .line 94
    return-void
.end method
