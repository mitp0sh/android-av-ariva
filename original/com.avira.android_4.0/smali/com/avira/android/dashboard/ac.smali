.class final Lcom/avira/android/dashboard/ac;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/SignActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/dashboard/SignActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/avira/android/dashboard/ac;->a:Lcom/avira/android/dashboard/SignActivity;

    .line 164
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/avira/android/dashboard/SignActivity;->a()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/avira/android/dashboard/SignActivity;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 172
    invoke-static {p1}, Lcom/avira/android/dashboard/ad;->a(I)Lcom/avira/android/dashboard/ad;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/ac;->a:Lcom/avira/android/dashboard/SignActivity;

    invoke-static {v0}, Lcom/avira/android/dashboard/SignActivity;->b(Lcom/avira/android/dashboard/SignActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/dashboard/ad;->a(I)Lcom/avira/android/dashboard/ad;

    move-result-object v0

    goto :goto_0
.end method
