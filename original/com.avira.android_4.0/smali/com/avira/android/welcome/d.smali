.class public final Lcom/avira/android/welcome/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final WELCOME_BACKGROUND:Ljava/lang/String; = "welcome_background"

.field private static final WELCOME_DESCRIPTION:Ljava/lang/String; = "welcome_description"

.field private static final WELCOME_TITLE:Ljava/lang/String; = "welcome_title"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/avira/android/KievitLightTextView;

.field private e:Lcom/avira/android/KievitLightTextView;

.field private f:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static final a(III)Lcom/avira/android/welcome/d;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/avira/android/welcome/d;

    invoke-direct {v0}, Lcom/avira/android/welcome/d;-><init>()V

    .line 37
    iput p0, v0, Lcom/avira/android/welcome/d;->a:I

    .line 38
    iput p1, v0, Lcom/avira/android/welcome/d;->b:I

    .line 39
    iput p2, v0, Lcom/avira/android/welcome/d;->c:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/welcome/d;->setRetainInstance(Z)V

    .line 41
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avira/android/welcome/d;->f:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/avira/android/welcome/d;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/avira/android/welcome/d;->d:Lcom/avira/android/KievitLightTextView;

    iget v1, p0, Lcom/avira/android/welcome/d;->b:I

    invoke-virtual {v0, v1}, Lcom/avira/android/KievitLightTextView;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/avira/android/welcome/d;->e:Lcom/avira/android/KievitLightTextView;

    iget v1, p0, Lcom/avira/android/welcome/d;->c:I

    invoke-virtual {v0, v1}, Lcom/avira/android/KievitLightTextView;->setText(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0300b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    const v1, 0x7f0e0244

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/avira/android/welcome/d;->f:Landroid/widget/RelativeLayout;

    .line 49
    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avira/android/KievitLightTextView;

    iput-object v1, p0, Lcom/avira/android/welcome/d;->d:Lcom/avira/android/KievitLightTextView;

    .line 50
    const v1, 0x7f0e0246

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avira/android/KievitLightTextView;

    iput-object v1, p0, Lcom/avira/android/welcome/d;->e:Lcom/avira/android/KievitLightTextView;

    .line 51
    if-eqz p3, :cond_0

    .line 53
    const-string v1, "welcome_background"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/avira/android/welcome/d;->a:I

    const-string v1, "welcome_title"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/avira/android/welcome/d;->b:I

    const-string v1, "welcome_description"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/avira/android/welcome/d;->c:I

    invoke-direct {p0}, Lcom/avira/android/welcome/d;->a()V

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/welcome/d;->a()V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    const-string v0, "welcome_background"

    iget v1, p0, Lcom/avira/android/welcome/d;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "welcome_title"

    iget v1, p0, Lcom/avira/android/welcome/d;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v0, "welcome_description"

    iget v1, p0, Lcom/avira/android/welcome/d;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
