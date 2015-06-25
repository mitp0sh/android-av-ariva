.class public final Lcom/avira/android/antivirus/az;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.avira.android.custom.VirusDialogFragment"


# instance fields
.field a:Lcom/avira/android/antivirus/bb;

.field b:Lcom/avira/android/antivirus/data/a;

.field c:Lcom/avira/android/antivirus/data/h;

.field d:Landroid/view/View;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/ImageView;

.field l:Lcom/avira/android/utilities/j;


# direct methods
.method private constructor <init>(Lcom/avira/android/antivirus/bb;Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/h;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/avira/android/antivirus/az;->a:Lcom/avira/android/antivirus/bb;

    .line 64
    iput-object p2, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    .line 66
    iput-object p3, p0, Lcom/avira/android/antivirus/az;->c:Lcom/avira/android/antivirus/data/h;

    .line 68
    return-void
.end method

.method public static a(Lcom/avira/android/antivirus/bb;Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/h;)Lcom/avira/android/antivirus/az;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/avira/android/antivirus/az;

    invoke-direct {v0, p0, p1, p2}, Lcom/avira/android/antivirus/az;-><init>(Lcom/avira/android/antivirus/bb;Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/h;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->dismiss()V

    .line 244
    :cond_0
    :try_start_0
    const-string v0, "com.avira.android.custom.VirusDialogFragment"

    invoke-virtual {p0, p1, v0}, Lcom/avira/android/antivirus/az;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->dismiss()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->a:Lcom/avira/android/antivirus/bb;

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->c:Lcom/avira/android/antivirus/data/h;

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/bb;->a(Lcom/avira/android/antivirus/data/h;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->a:Lcom/avira/android/antivirus/bb;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->a:Lcom/avira/android/antivirus/bb;

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/bb;->a(Lcom/avira/android/antivirus/data/a;)V

    .line 205
    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->dismiss()V

    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 223
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, -0x100

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 227
    return-object v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    const v0, 0x7f030088

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/avira/android/antivirus/ba;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/ba;-><init>(Lcom/avira/android/antivirus/az;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->l:Lcom/avira/android/utilities/j;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antivirus/az;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->l:Lcom/avira/android/utilities/j;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->l:Lcom/avira/android/utilities/j;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->l:Lcom/avira/android/utilities/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    const v1, 0x7f0e019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->l:Lcom/avira/android/utilities/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x7f08030e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/avira/android/antivirus/az;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v2}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avira/android/antivirus/data/e;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/avira/android/antivirus/az;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_detail_title:[I

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->c:Lcom/avira/android/antivirus/data/h;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/h;->b()I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_detail_title:[I

    iget-object v2, p0, Lcom/avira/android/antivirus/az;->c:Lcom/avira/android/antivirus/data/h;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/h;->b()I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08030a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080309

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "<strong>"

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v1}, Lcom/avira/android/antivirus/data/a;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_1
    const v0, 0x7f08030f

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0200ea

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->b:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br/><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/az;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->c:Lcom/avira/android/antivirus/data/h;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/h;->b()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avira/android/antivirus/az;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/avira/android/antivirus/az;->d:Landroid/view/View;

    return-object v0
.end method
