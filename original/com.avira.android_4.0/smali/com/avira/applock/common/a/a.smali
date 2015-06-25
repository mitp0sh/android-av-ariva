.class public Lcom/avira/applock/common/a/a;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Lcom/avira/applock/common/a/b;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/avira/applock/common/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/applock/common/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    invoke-virtual {p0, v1}, Lcom/avira/applock/common/a/a;->setCancelable(Z)V

    .line 41
    sget v0, Lcom/avira/applock/g;->DialogNoTitle:I

    invoke-virtual {p0, v1, v0}, Lcom/avira/applock/common/a/a;->setStyle(II)V

    .line 42
    iput-object p1, p0, Lcom/avira/applock/common/a/a;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/avira/applock/common/a/a;->c:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/common/a/a;->f:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/avira/applock/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/avira/applock/common/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public a(Lcom/avira/applock/common/a/b;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_special_action_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_special_action_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_special_action_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    sget v1, Lcom/avira/applock/d;->dialog_btn_positive:I

    if-ne v0, v1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->b()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/avira/applock/common/a/a;->dismiss()V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    sget v1, Lcom/avira/applock/d;->dialog_btn_negative:I

    if-ne v0, v1, :cond_4

    .line 146
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->c()V

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/avira/applock/common/a/a;->dismiss()V

    goto :goto_0

    .line 152
    :cond_4
    sget v1, Lcom/avira/applock/d;->dialog_special_action_layout:I

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->d()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/avira/applock/e;->custom_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/applock/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/applock/common/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    sget v1, Lcom/avira/applock/d;->dialog_btn_positive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-boolean v0, p0, Lcom/avira/applock/common/a/a;->f:Z

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/avira/applock/common/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/avira/applock/common/a/a;->e:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->a()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 129
    return-void
.end method
