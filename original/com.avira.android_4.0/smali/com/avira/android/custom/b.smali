.class final Lcom/avira/android/custom/b;
.super Lcom/avira/applock/common/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avira/android/custom/b;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-direct {p0}, Lcom/avira/applock/common/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avira/android/custom/b;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/b;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    return-void
.end method
