.class public final Lcom/avira/android/antivirus/ay;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.avira.android.custom.SectionDialogFragment"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/view/View;

.field d:Landroid/widget/ImageButton;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/avira/android/antivirus/ay;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/avira/android/antivirus/ay;->b:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->dismiss()V

    .line 110
    :cond_0
    :try_start_0
    const-string v0, "com.avira.android.custom.SectionDialogFragment"

    invoke-virtual {p0, p1, v0}, Lcom/avira/android/antivirus/ay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->d:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 85
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, -0x100

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 89
    return-object v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    const v0, 0x7f030086

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/avira/android/antivirus/ay;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    const v1, 0x7f0e019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/ay;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    const v1, 0x7f0e019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/ay;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/avira/android/antivirus/ay;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/antivirus/ay;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/antivirus/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/avira/android/antivirus/ay;->c:Landroid/view/View;

    return-object v0
.end method
