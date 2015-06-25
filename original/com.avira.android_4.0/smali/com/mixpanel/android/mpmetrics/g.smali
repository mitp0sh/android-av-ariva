.class final Lcom/mixpanel/android/mpmetrics/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GRAY_72PERCENT_OPAQUE:I

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI BackgroundCapture"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1c

    .line 103
    const/16 v0, 0xba

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mixpanel/android/mpmetrics/g;->GRAY_72PERCENT_OPAQUE:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/mixpanel/android/mpmetrics/g;->GRAY_72PERCENT_OPAQUE:I

    return v0
.end method

.method public static a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/mixpanel/android/mpmetrics/h;

    invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/h;-><init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method
