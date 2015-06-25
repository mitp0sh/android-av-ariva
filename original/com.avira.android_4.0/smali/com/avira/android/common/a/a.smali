.class public Lcom/avira/android/common/a/a;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/avira/applock/common/a/b;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/avira/android/common/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    invoke-virtual {p0, v1}, Lcom/avira/android/common/a/a;->setCancelable(Z)V

    .line 42
    const v0, 0x7f090003

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/common/a/a;->setStyle(II)V

    .line 43
    iput-object p1, p0, Lcom/avira/android/common/a/a;->b:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/avira/android/common/a/a;->e:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->b()V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avira/android/utilities/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.vending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "market://details?id="

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "app_rated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "com.amazon.venezia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "amzn://apps/android?p="

    goto :goto_1

    :cond_3
    const-string v0, "http://play.google.com/store/apps/details?id="

    goto :goto_1

    :cond_4
    const-string v0, "http://play.google.com/store/apps/details?id="

    goto :goto_1

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->dismiss()V

    .line 162
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->c()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7f0e0113
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 63
    const v0, 0x7f030090

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/common/a/a;->c:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/avira/android/common/a/a;->c:Landroid/view/View;

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/avira/android/common/a/a;->c:Landroid/view/View;

    const v1, 0x7f0e0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/avira/android/common/a/a;->c:Landroid/view/View;

    const v1, 0x7f0e0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-boolean v0, p0, Lcom/avira/android/common/a/a;->e:Z

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "last_dialog_display_time_pref"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 75
    iget-object v0, p0, Lcom/avira/android/common/a/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/avira/android/common/a/a;->d:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->a()V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    return-void
.end method
