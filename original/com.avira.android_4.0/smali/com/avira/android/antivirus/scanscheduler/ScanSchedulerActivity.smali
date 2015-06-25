.class public Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final NO_OF_WEEK_DAYS:I = 0x7


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ToggleButton;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/Button;

.field private c:Lcom/avira/android/antivirus/scanscheduler/a;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->e:Z

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/scanscheduler/a;->c()I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->d()I

    move-result v1

    invoke-static {v1}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "H:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->b:Landroid/widget/Button;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->e:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 196
    iget v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    .line 198
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1, v0, p2}, Lcom/avira/android/antivirus/scanscheduler/a;->a(IZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Landroid/app/TimePickerDialog;

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->c()I

    move-result v4

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->d()I

    move-result v5

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->b()Z

    move-result v6

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->setContentView(I)V

    .line 52
    new-instance v0, Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-direct {v0}, Lcom/avira/android/antivirus/scanscheduler/a;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01be

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01bf

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01c0

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01c1

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01c3

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    const v0, 0x7f0e01c4

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0e01c5

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->e:Z

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x0

    .line 59
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->d:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    :goto_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_4

    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->d:I

    add-int/2addr v0, v2

    if-le v0, v6, :cond_3

    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->d:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x7

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Lcom/avira/android/antivirus/scanscheduler/a;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->d:I

    add-int/2addr v0, v2

    move v1, v0

    goto :goto_4

    .line 61
    :cond_4
    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a()V

    .line 62
    iput-boolean v3, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->e:Z

    .line 63
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->c:Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v0, p2, p3}, Lcom/avira/android/antivirus/scanscheduler/a;->a(II)V

    .line 214
    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;->a()V

    .line 215
    return-void
.end method
