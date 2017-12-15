package com.att.eg.catalog.cms.ingest.gitignore;
//package com.att.eg.catalog.ingest.linearcontent.utils;

import com.att.eg.monitoring.yawl.YawlLogger;
import org.joda.time.LocalDateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.text.ParseException;

import static com.att.aft.dme2.internal.apache.commons.lang3.time.DateUtils.parseDate;
import static com.att.eg.monitoring.annotations.statuscodes.CommonStatusCodes.INVALID_DATATYPE;

public class DateUtils {
    //2017-11-20T10:00:00.000Z
    private static final String DATE_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.S'Z'";
    private static DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormat.forPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z");
    private static YawlLogger yawlLogger = new YawlLogger(DateUtils.class);


    private DateUtils() {
        // No instance of this
    }

    public static Long parseDateToLong(String date) {
        try {
            return new Long(parseDate(date, DATE_TIME_FORMAT).getTime());
        } catch (ParseException | IllegalArgumentException e) {
            yawlLogger.error(INVALID_DATATYPE, "source", "cms", "date", date, "format", DATE_TIME_FORMAT);
            yawlLogger.error(INVALID_DATATYPE, e, e.toString());
        }
        return new Long(0);
    }

    public static String addDaysWithStartOfTheDayAndFormat(int days) {
        return LocalDateTime.now().plusDays(days).millisOfDay().withMinimumValue().toString(DATE_TIME_FORMATTER);
    }

    public static String addDaysWithEndOfTheDayAndFormat(int days) {
        return LocalDateTime.now().plusDays(days).millisOfDay().withMaximumValue().toString(DATE_TIME_FORMATTER);
    }

    public static String add(LocalDateTime l) {
       return l.toString(DATE_TIME_FORMATTER);
    }

    public static void main(String[] args) {
        LocalDateTime localDateTime1 = LocalDateTime.now().plusDays(2).millisOfDay().withMinimumValue();
        LocalDateTime localDateTime2 = LocalDateTime.now().plusDays(3).millisOfDay().withMinimumValue();
        System.out.println(localDateTime1.toString(DATE_TIME_FORMATTER));
        System.out.println(localDateTime2.toString(DATE_TIME_FORMATTER));
        /*
        2017-11-20T10:00:00.000Z
2017-12-02T00:00:00.000Z
2017-12-02T23:59:59.999Z
2017-12-02T23:59:59.999
1511172000000
1511172000000
1511172000000
2017-11-20T10:00:00.000Z
         */
    }
}
