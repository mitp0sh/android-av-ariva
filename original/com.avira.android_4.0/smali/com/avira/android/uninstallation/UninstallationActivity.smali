.class public Lcom/avira/android/uninstallation/UninstallationActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/uninstallation/a;


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN_RESULT:I = 0x65


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/avira/android/uninstallation/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/uninstallation/UninstallationActivity;)Lcom/avira/android/uninstallation/e;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->f:Lcom/avira/android/uninstallation/e;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->f:Lcom/avira/android/uninstallation/e;

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/e;->f()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 134
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avira/android/uninstallation/UninstallationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 165
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/avira/android/uninstallation/e;

    invoke-direct {v0, p0}, Lcom/avira/android/uninstallation/e;-><init>(Lcom/avira/android/uninstallation/a;)V

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->f:Lcom/avira/android/uninstallation/e;

    .line 46
    const v0, 0x7f0e0218

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->d:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e0216

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->e:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e0217

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->a:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/avira/android/uninstallation/b;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/b;-><init>(Lcom/avira/android/uninstallation/UninstallationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e0219

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/uninstallation/c;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/c;-><init>(Lcom/avira/android/uninstallation/UninstallationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->c:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/uninstallation/d;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/d;-><init>(Lcom/avira/android/uninstallation/UninstallationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->f:Lcom/avira/android/uninstallation/e;

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/e;->a()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationActivity;->f:Lcom/avira/android/uninstallation/e;

    invoke-virtual {v0}, Lcom/avira/android/uninstallation/e;->b()V

    .line 108
    return-void
.end method
